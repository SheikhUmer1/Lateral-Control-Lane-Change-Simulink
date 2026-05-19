# Lateral Control for Lane Changing Manoeuvre using MATLAB/Simulink

## Project Overview

This project focuses on lateral and longitudinal control for a lane-changing/overtaking manoeuvre using MATLAB and Simulink.

The scenario includes a subject vehicle performing a lane-change manoeuvre to overtake a slower vehicle. The subject vehicle starts at approximately 7 m/s and accelerates toward a desired speed of 11.12 m/s while achieving a desired lateral displacement of 3 m.

## Objective

The objective of this project was to design and simulate decoupled longitudinal and lateral vehicle dynamics control for a lane-changing manoeuvre.

## Main Features

- MATLAB/Simulink-based vehicle dynamics simulation
- Longitudinal speed control
- Lateral position control
- PID controller implementation
- Lane-change/overtaking scenario
- Robustness analysis using uncertain vehicle parameters
- Latin Hypercube Sampling for parameter variation

## Vehicle Scenario

- Subject vehicle: Honda Civic X
- Vehicle to be overtaken: Audi A5
- Initial subject vehicle speed: approximately 7 m/s
- Following vehicle speed: 5 m/s
- Desired subject vehicle speed: 11.12 m/s
- Desired lateral displacement: 3 m

## Tools Used

- MATLAB
- Simulink
- PID Control
- Vehicle Dynamics
- Latin Hypercube Sampling
- Robustness Analysis

## Files Included

- `Challenge_2023_presentation.pptx` — project presentation
- `Challenge_Lat_2023_Sim.slx` — Simulink model
- `Challenge_Lat_2023_Sim.slxc` — Simulink cache file
- `Challenge_Lateral_2023.m` — MATLAB script for vehicle dynamics parameters and plotting
- `Main_file.m` — robustness simulation script
- `parameters.m` — vehicle and control parameters
- `lhsdesignbnd.m` — Latin Hypercube Sampling helper function
- `project_summary.md` — short project summary

## Results

The project demonstrated PID-based control for both longitudinal and lateral dynamics. The longitudinal controller was used to track the desired vehicle speed, while the lateral controller was used to achieve the required lane-change displacement.

Robustness analysis was performed by varying key vehicle parameters such as mass, front cornering stiffness, and distance from the center of gravity.

## Note

This repository contains academic project files and simulation models. Large generated simulation output files are not included.
