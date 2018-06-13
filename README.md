# Pitch-and-Yaw-Angle-Control-in-Unmanned-Free--Swimming-Submersible-Vehicle
Simulation of Pitch and Yaw Angle Control in Unmanned Free-Swimming Submersible Vehicle

This project is the result of modelling and simulating the Pitch and Yaw Angle Control in
Unmanned Free -Swimming Submersible Vehicle.


This code is fully developed by Ahmed Wael for the control systems class in spring 2018.

## How to use
You can uncomment any figure that you would like to see.

## Our work

1. Step response : open loop system - Closed loop system, for both pitch control system and heading control system.
2. Root locus : open loop system - Closed loop system, for both pitch control system and heading control system.
3. Bode plot : open loop system - Closed loop system, for both pitch control system and heading control system.

We observe that as we increase the gain of the system, the overshoot and the settling time increase
while the rise time and the steady state error decrease. Also, the system is not
stable for all values of gain as calculated from Routh table and observed from root
locus and bode plot.

So we use PID tuner app in MATLAB to design PI, PD, and PID controllers with suitable gain vaules. Finally, all the time and frequency parameters are obtained and compared with the uncompensateted system.

## Authors

* **Ahmed Wael** - [Github](https://github.com/ahmedwael19)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
