#include <snes.h>
#include "utils.h"

int main(void) {
    // Initialize SNES
    consoleInit();

    setMode(BG_MODE1, 0);
    bgSetEnable(0);
    bgSetDisable(1);
    bgSetDisable(2);
    bgSetDisable(3);
    
    //nmiSet(myConsoleVblank);
    
    setScreenOn();

    while(1) {
        WaitForVBlank();
    }
    return 0;
}
