# Propeller Arm Control
A PID based propeller arm control scheme is implemented in MATLAB/SIMULINK environment.
The propeller arm is designed to look like a windmill and only rotates in one direction, eliminating any means to decelerate other than gravitational force and friction.
Performance metrics of the implementation are presented below.

|                     |    0° to 45°    |    45° to 0°     |    45° to 0°     | 0° to max°  |
|---------------------|-----------------|-------------------------------------|---------------------------------------------------|---------------|
|Angle Furthest Away
from the Initial Angle
In Transient Response 
(degrees)|44.9535
(0 overshoot)| 4.3V                                | 4.3V                                              | 4.0V          |
| 2.7V                | 2.7V            | 2.7V                                | 2.7V                                              | 2.7V          |
| 1.8V                | 1.8V            | 1.8V                                | 1.8V                                              |               |
|                     |                 |                                     |                                                   |               |
|                     |                 |                                     |                                                   |               |
|                     |                 |                                     |                                                   |               |
|                     |                 |                                     |                                                   |               |
| Disabled            | Disabled        | Disabled                            | Disabled                                          | Disabled      |
