#include <iostream>

#include <jack/speak/Speak.h>

bool testSpeak ()
{
    return (speak::getNumberedPhrase(1) == "you selected 1");
}

int main()
{
    if (! testSpeak ()) { return 1; }

    return 0;
}


