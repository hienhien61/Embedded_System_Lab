#include <stdio.h>
#include <inttypes.h>
#include "sdkconfig.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_chip_info.h"
#include "esp_flash.h"
#include "driver/gpio.h"

#define BUTTON_PIN      25
#define NORMAL_STATE    1
#define PRESSED_STATE   0

int key0 = NORMAL_STATE;
int key1 = NORMAL_STATE;
int key2 = NORMAL_STATE;

int key3 = NORMAL_STATE;

static void printESP32 () {
    while (1)
    {
        key0 = key1;
	    key1 = key2;
        key2 = gpio_get_level(BUTTON_PIN);
        //debouncing
        if((key0 == key1) && (key1 == key2)){
            if(key3 != key2){
                key3 = key2;
                if(key2 == PRESSED_STATE){
                    printf("ESP32\n"); 
                } 
            }
        }
        vTaskDelay(50 / portTICK_PERIOD_MS);
    }
    vTaskDelete(NULL);
}

static void printID () {
    while(1){
        printf("2011203\n"); 
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
    vTaskDelete(NULL);
}

void app_main(void)
{
    gpio_set_direction (BUTTON_PIN , GPIO_MODE_INPUT );
    //start gpio task
    xTaskCreate(printID, "printID", 100, NULL, 5, NULL);
    xTaskCreate(printESP32, "printESP32", 100, NULL, 10, NULL);
}
