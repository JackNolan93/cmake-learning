#include <iostream>

#include <jack/speak/Speak.h>
#include <jack/maths/Maths.h>

int main()
{
    while (1)
    {
        int num;
        std::cout << "Enter a number" << std::endl;

        std::cin >> num;

        if (num < 10)
            std::cout << speak::getNumberedPhrase(num) << std::endl;
        else if (num < 20)
            std::cout << maths::square(num) << std::endl;
        else if (num < 30)
            std::cout << maths::squareRoot(num) << std::endl;
        else
            std::cout << maths::cubed(num) << std::endl;
    }

    return 0;
}
