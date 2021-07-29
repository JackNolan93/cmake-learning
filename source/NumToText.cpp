#include "Speak/Speak.h"

namespace speak
{

    std::string getNumberedPhrase(int number)
    {
        switch (number)
        {
        case 1:
            return "you selected 1";
            break;
        case 2:
            return "you selected 2";
            break;
        case 3:
            return "you selected 3";
            break;
        case 4:
            return "you selected 4";
            break;
        case 5:
            return "you selected 5";
            break;

        default:
            return "you selected an unknown number";
            break;
        }
    }

}
