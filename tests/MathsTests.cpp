#include <iostream>

#include <jack/maths/Maths.h>

bool testSquared ()
{
    return (maths::square(4) == 16);
}

bool testCubed ()
{
    return (maths::cubed(4) == 64);
}

bool testSquareRoot ()
{
    return (maths::squareRoot (4) == 2.f);
}

int main()
{
    if (! testSquared ()) { return 1; }

    if (! testCubed ()) { return 1; }

    if (! testSquareRoot ()) { return 1; }

    return 0;
}


