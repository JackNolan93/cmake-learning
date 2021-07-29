#include <iostream>
#include <Speak/Speak.h>

int main()
{
    while (1)
    {
        int num;
        std::cout << "Enter a number" << std::endl;

        std::cin >> num;

        std::string val = speak::getNumberedPhrase(num);

        std::cout << val << std::endl;
    }

    return 0;
}