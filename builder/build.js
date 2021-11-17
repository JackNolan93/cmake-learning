const fs = require('fs');
const path = require('path');
const {execSync} = require('child_process');
const yargs = require('yargs');
const process = require('process');

const rootDir = path.join(__dirname, '..');
const buildDir = path.join(rootDir, 'build');
const logsDir = path.join(rootDir, 'logs');
const unitTestsDir = path.join(logsDir, 'unit-tests');
const unitTestsFile = path.join(unitTestsDir, 'unit-tests.xml');

/**
 * This function is to avoid duplicate env vars.
 * If you see this in the output:
 * C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Microsoft\VC\v160\Microsoft.CppCommon.targets(241,5): error MSB6001: Invalid command line switch for "cmd.exe". System.ArgumentException: Item has already been added. Key in dictionary: 'Path'  Key being added: 'PATH' [C:\Users\circleci\project\cmake-build\ZERO_CHECK.vcxproj]
 * Then you need it
 */
// const mergeDuplicateVars = () => {
//   if (process.platform !== 'darwin' && process.env.Path && process.env.PATH) {
//     const allVarsInPath = [
//       ...process.env.Path.split(';'),
//       ...process.env.PATH.split(';'),
//     ];
//     const uniqueVarsInPath = [...new Set(allVarsInPath)].join(';');
//     delete process.env.Path;
//     process.env.PATH = uniqueVarsInPath;
//   }
// };

let startTime = 0;
const start = () => {
  startTime = process.hrtime.bigint();
};
const stop = () => {
  console.log(
    `Runtime was ${
      Number(process.hrtime.bigint() - startTime) / 1000000000
    } seconds`
  );
};

const cmake = (args) => {
  execSync(`cmake ${args}`, {
    cwd: path.resolve(buildDir),
    stdio: 'inherit',
    env: process.env,
  });
};

const ctest = (config) => {
  execSync(
    `ctest -C ${config}`,
    {
      cwd: buildDir,
      stdio: 'inherit',
    }
  );
};

const clean = () => {
  if (fs.existsSync(buildDir)) {
    console.log(`Build dir exists at ${buildDir}, removing...`);
    fs.rmdirSync(buildDir, {recursive: true});
  }
};

const makeBuildDirectory = () => {
  console.log(`Making build dir at ${buildDir}`);
  fs.mkdirSync(buildDir);
};

const makeLogsDirectory = () => {
  if (!fs.existsSync(logsDir)) {
    console.log(`Making logs dir at ${logsDir}`);
    fs.mkdirSync(logsDir);
  }
  if (!fs.existsSync(unitTestsDir)) {
    console.log(`Making unit tests dir at ${unitTestsDir}`);
    fs.mkdirSync(unitTestsDir);
  }
};

const generate = () => {
  console.log(`Generating project`);
  cmake(
    `-G ${
      process.platform === 'darwin' ? 'Xcode' : '"Visual Studio 16 2019" -A x64'
    } ../`
  );
};

const build = (config = 'Release') => {
  console.log(`Building project in ${config}`);
  cmake(`--build . --parallel 8 --config ${config}`);
};

const test = (config = 'Release') => {
  console.log(`Testing project in ${config}`);
  makeLogsDirectory();
  ctest(config);
};

const run = (command) => {
  return execSync(command, {
    cwd: buildDir,
  });
};

const chomp = (str) => {
  return str.replace(/[\n\r]+/g, '');
};


yargs
  .scriptName('builder')
  .usage('$0 <cmd> [args]')
  .command(
    'clean',
    'Remove all existing build directory and project files',
    (yargs) => {},
    function (argv) {
      start();
      clean();
      stop();
    }
  )
  .command(
    'generate',
    'Generate the build directory and project files',
    (yargs) => {},
    function (argv) {
      start();
      clean();
      makeBuildDirectory();
      generate();
      stop();
    }
  )
  .command(
    'build [config]',
    'Build the project',
    (yargs) => {
      yargs.positional('config', {
        type: 'string',
        default: 'Release',
        describe: 'The build configuration. Normally "Release" or "Debug"',
      });
    },
    function (argv) {
      start();
      build(argv.config);
      stop();
    }
  )
  .command(
    'test [config]',
    'Test the project',
    (yargs) => {
      yargs.positional('config', {
        type: 'string',
        default: 'Release',
        describe: 'The build configuration. Normally "Release" or "Debug"',
      });
    },
    function (argv) {
      start();
      test(argv.config);
      stop();
    }
  )
  .help()
  .wrap(yargs.terminalWidth())
  .alias('help', 'h')
  .alias('help', '?').argv;
