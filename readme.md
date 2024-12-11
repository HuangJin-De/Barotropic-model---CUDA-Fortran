Barotropic model
This model is implemented based on vertical vorticity equation using finite difference method. 
The advection term is discretized by Arakawa jacobian 7 method on the Arakawa C grid.
The inversion of vorticity is calcualted by a direct FFT solver (cufft).
RK4 method is applied to for time integration.

