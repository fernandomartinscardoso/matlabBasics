## JurosCompComAporte.m

Compound interest with monthly contributions involves calculating the **future value** of an investment that includes an **initial principal** and a series of **equal, regular deposits** (an annuity). The interest is typically compounded monthly.

The total future value ($FV$) is the sum of two parts:
1.  The future value of the **initial principal** ($P$), compounded over the time period.
2.  The future value of the **monthly contributions** (annuity).

### The Formula

The full formula to calculate the future value ($FV$) of an investment with an initial principal and regular monthly contributions is:

$$FV = P{\left(1+\frac{r}{n}\right)}^{nt} + PMT \left[ \frac{{\left(1+\frac{r}{n}\right)}^{nt}-1}{\frac{r}{n}} \right]$$

***

### Key Variables

| Variable | Definition |
| :--- | :--- |
| **$FV$** | The **Future Value** of the investment, including all interest earned. |
| **$P$** | The **Initial Principal** (the starting lump sum amount). |
| **$PMT$** | The amount of the **Monthly Contribution** (Payment). |
| **$r$** | The **Annual Interest Rate** (expressed as a decimal, e.g., 5% is 0.05). |
| **$n$** | The **Number of times interest is compounded per year**. For monthly compounding, $n=12$. |
| **$t$** | The **Number of years** the money is invested. |

***

### Components Explained

The formula is essentially two separate calculations added together:

#### 1. Future Value of the Initial Principal

$$P{\left(1+\frac{r}{n}\right)}^{nt}$$

This is the standard compound interest formula, which calculates how much your **initial lump sum** ($P$) will grow over time, solely from the power of compounding.

#### 2. Future Value of the Monthly Contributions (Annuity)

$$PMT \left[ \frac{{\left(1+\frac{r}{n}\right)}^{nt}-1}{\frac{r}{n}} \right]$$

This is the Future Value of an Ordinary Annuity formula, which calculates how much the **series of regular contributions** ($PMT$) will be worth, including all the compound interest they earn.

***

### The Power of Compounding with Contributions

Adding regular contributions significantly boosts the final value of your investment:

* **Principal Growth:** Each monthly contribution becomes a new piece of principal that starts earning interest immediately.
* **Interest on Interest:** The interest earned on the initial principal, the interest earned on previous contributions, and the interest earned on all other accumulated interest is continually added to the balance, accelerating the growth.
* **Time Horizon:** This effect is most powerful over **long time periods** ($t$), as the compounding has more time to multiply the gains.

## am_gm_application.m

[Equations solved using the AM-GM (Arithmetic Mean-Geometric Mean)](https://www.youtube.com/watch?v=4T1TPVsSnwU) inequality often involve variables and their reciprocals or sums and products that can be grouped into specific relationships.

The AM-GM inequality states that for any set of non-negative real numbers $x_1, x_2, ..., x_n$:

$$\frac{x_1 + x_2 + ... + x_n}{n} \geq \sqrt[n]{x_1x_2...x_n}$$

Equality holds if and only if all the numbers are exactly equal ($x_1 = x_2 = ... = x_n$)

Here are three common categories of equations solved using this property:

1. Reciprocal Variable Equations
   Equations where variables and their reciprocals are added together can be solved by applying AM-GM to cancel out the variables in the product.
   - Example: $x + \frac{9}{x} = 6$ (for $x > 0$)
   - How to solve: Apply AM-GM to the terms $x$ and $\frac{9}{x}$.
    
      $$\frac{x + \frac{9}{x}}{2} \geq \sqrt{x \cdot \frac{9}{x}}$$
      
      $$\frac{x + \frac{9}{x}}{2} \geq \sqrt{9} = 3$$
      
      $$x + \frac{9}{x} \geq 6$$
    
   - Conclusion: Because the equation specifies that $x + \frac{9}{x} = 6$, equality must hold. For equality in AM-GM, the terms must be equal ($x = \frac{9}{x}$), meaning $x^2 = 9$ or $x = 3$.

2. Polynomial Equations with Sum Constraints
   These equations require finding a specific sum of variables to minimize a polynomial or find exact root values.
   - Example: $x^3 + y^3 + z^3 = 3xyz$
   - How to solve: Rearrange to $x^3 + y^3 + z^3 - 3xyz = 0$. By applying the AM-GM inequality, we know that for non-negative numbers:
    
      $$\frac{x^3 + y^3 + z^3}{3} \geq \sqrt[3]{x^3y^3z^3} = xyz$$
    
      $$x^3 + y^3 + z^3 \geq 3xyz$$
    
   - Conclusion: Since the sum equals $3xyz$, equality is the only solution. This only occurs when $x^3 = y^3 = z^3$, which leads to $x = y = z$.

3. Trigonometric and Exponential Sums
   Equations featuring trigonometric or exponential functions can often be rewritten as a sum of functions that are multiplicative inverses.
   - Example: $\sin^2(x) + \csc^2(x) = 2$ (for $0 < x < \pi$)
   - How to solve: Let $\sin^2(x) = a$ and $\csc^2(x) = \frac{1}{a}$. The equation becomes $a + \frac{1}{a} = 2$. Apply AM-GM:

      $$\frac{a + \frac{1}{a}}{2} \geq \sqrt{a \cdot \frac{1}{a}} = 1 \implies a + \frac{1}{a} \geq 2$$
     
   - Conclusion: Because the equation demands the sum be exactly $2$, the only solution is equality. Therefore, $a = \frac{1}{a}$, meaning $\sin^2(x) = 1$, which gives $x = \frac{\pi}{2}$.

For a deeper dive into the formal proofs, see the [AM-GM Inequality Wiki](https://artofproblemsolving.com/wiki/index.php/AM-GM_Inequality) on the Art of Problem Solving platform.
