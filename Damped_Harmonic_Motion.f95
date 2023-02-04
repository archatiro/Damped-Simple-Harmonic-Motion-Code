program simple_harmonic_motion
implicit none

real(8):: x(100), v(100), a(100),Tau, m, k,w, init, Amp, b,e
integer(4):: i, nmax,t
Tau = 0.1

e = 2.71828

write(*,*) "What is the mass of your object?"
read(*,*) m

write(*,*) "What is the spring stiffness constant of your spring?"
read(*,*) k

write(*,*) "Is there a phase constant and if so, what is it(radians)?"
read(*,*) init

write(*,*) "What is the amplitude?"
read(*,*) Amp

write(*,*) "What is the damping constant?"
read(*,*) b

write(*,*) "How many terms would you like?"
read(*,*) nmax

w = sqrt(k/m)

open(100, file="x.dat")

do t = 1, 100
Amp = Amp*e**((-b*t)/(2.0*m))
x(t) = Amp*cos(w*t + init)
v(t) = -w*Amp*sin(w*t + init)
a(t) = -w**2 * x(t)
write (100,*) t, x(t)
end do



end program simple_harmonic_motion
