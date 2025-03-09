#!/bin/bash

clear
balance=100

echo "Loading"
sleep 1
clear
echo "Loading."
sleep 1
clear
echo "Loading.."
sleep 1
clear
echo "Loading..."
sleep 1
clear

farmStart() {
    if [ -z "$balance" ]; then
        balance=100
    fi

    echo "It's early morning and you are on the farm"
    read -p "Press Enter to continue..."
    clear
    echo "You are going to cultivate Field 1. Your balance is: $balance Euros"
    read -p "Press Enter to continue..."
    clear

    tractorSelection
}

tractorSelection() {
    clear
    echo "Select tractor..."
    echo "A) Claas AXION 800"
    echo "B) Deutz-Fahr Series 6 TTV"
    read -p "Select your choice: " tractor_choice
    clear

    if [[ "$tractor_choice" == "B" ]]; then
        echo "You selected Deutz-Fahr Series 6 TTV"
    elif [[ "$tractor_choice" == "A" ]]; then
        echo "You selected Claas AXION 800"
    fi
    read -p "Press Enter to continue..."
    clear

    selectCultivator
}

selectCultivator() {
    clear
    echo "Select cultivator..."
    echo "A) Horsch Terrano 3.5FX"
    echo "B) Rabe EG 3/9"
    read -p "Select your choice: " cultivator_choice
    clear

    if [[ "$cultivator_choice" == "B" ]]; then
        echo "You selected Rabe EG 3/9"
    elif [[ "$cultivator_choice" == "A" ]]; then
        echo "You selected Horsch Terrano 3 DC"
    fi
    read -p "Press Enter to continue..."
    clear

    selectJob
}

selectJob() {
    echo "Select job on the field..."
    echo "A) Cultivate"
    echo "B) Go back"
    read -p "Select your choice: " job_choice

    if [[ "$job_choice" == "B" ]]; then
        tractorSelection
    elif [[ "$job_choice" == "A" ]]; then
        clear
        echo "Cultivating Field 1..."
        sleep 5
        clear
        echo "Field Cultivated"
        read -p "Press Enter to continue..."
        clear

        sowMenu
    fi
}

sowMenu() {
    clear
    echo "Select option..."
    echo "A) Sow Field 1"
    echo "B) Show balance"
    echo "C) Exit"
    read -p "Select your choice: " sow_choice

    if [[ "$sow_choice" == "C" ]]; then
        exitPrompt2
    elif [[ "$sow_choice" == "B" ]]; then
        clear
        echo "Your balance is: $balance Euros"
        read -p "Press Enter to continue..."
        clear
        sowMenu
    elif [[ "$sow_choice" == "A" ]]; then
        sowField1
    fi
}

sowField1() {
    clear
    echo "Select tractor..."
    echo "A) Claas AXION 800"
    echo "B) Deutz-Fahr Series 6 TTV"
    read -p "Select your choice: " tractor_choice
    clear
    echo "Select seeder..."
    echo "A) Horsch Pronto 3 DC"
    echo "B) Nordsten NS 3003"
    read -p "Select your choice: " seeder_choice
    clear

    echo "Sowing Field 1..."
    sleep 5
    clear
    echo "Field Sown"
    read -p "Press Enter to continue..."
    clear

    echo "Wheat on Field 1 is growing..."
    sleep 8
    clear

    fieldHarvest1
}

fieldHarvest1() {
    clear
    echo "Field 1 is ready to harvest"
    echo "A) Harvest Field 1"
    echo "B) Exit"
    read -p "Select your choice: " harvest_choice

    if [[ "$harvest_choice" == "B" ]]; then
        exitPrompt
    elif [[ "$harvest_choice" == "A" ]]; then
        harvestOption
    fi
}

exitPrompt() {
    clear
    echo "Do you want to quit the game? Your progress will not be saved"
    echo "A) Yes"
    echo "B) No"
    read -p "Select your choice: " exit_choice

    if [[ "$exit_choice" == "B" ]]; then
        fieldHarvest1
    elif [[ "$exit_choice" == "A" ]]; then
        exit
    fi
}

harvestOption() {
    clear
    echo "Harvesting Field 1..."
    sleep 7
    clear
    echo "Field 1 harvested"
    read -p "Press Enter to continue..."
    clear

    echo "Selling crops..."
    sleep 5
    clear
    echo "Crops were sold. You earned 1000 Euros"
    read -p "Press Enter to continue..."
    clear

    balance=$((balance + 1000))
    clear
    echo "Select option..."
    echo "A) Sleep until morning (6 AM)"
    echo "B) Exit"
    read -p "Select your choice: " sleep_choice

    if [[ "$sleep_choice" == "B" ]]; then
        exit
    elif [[ "$sleep_choice" == "A" ]]; then
        clear
        echo "Sleeping..."
        sleep 5
        clear
        farmStart
    fi
}

exitPrompt2() {
    clear
    echo "Do you want to quit the game? Your progress will not be saved"
    echo "A) Yes"
    echo "B) No"
    read -p "Select your choice: " exit_choice

    if [[ "$exit_choice" == "B" ]]; then
        sowMenu
    elif [[ "$exit_choice" == "A" ]]; then
        exit
    fi
}

farmStart