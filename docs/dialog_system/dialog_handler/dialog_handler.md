# Dialog Handler

A **global** script responsible for handle the states of the ongoing dialogue. When a dialogue is initiated, a series of settings are defined, based on the data provided by the `DialogProvider`. Settings: 

- Array containing all the content of each dialogue node;
- Currently active dialogue node;
- Which dialogue node starts the context;
- Which node ends the context;
- How many dialogue nodes there are; array containing all the player's choices.

This script is responsible for navigating between the dialogue nodes and sending the appropriate content to the `DialogView` so that it can be displayed to the player on the HUD.