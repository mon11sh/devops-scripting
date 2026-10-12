using Calculator;

namespace Calculator.Tests;

public class UnitTest1
{
    [Fact]
    public void Add_Returns_Correct_Result()
    {
        var calc = new MathOperations();

        Assert.Equal(5, calc.Add(2, 3));
    }

    [Fact]
    public void Divide_Returns_Correct_Result()
    {
        var calc = new MathOperations();

        Assert.Equal(5, calc.Divide(10, 2));
    }
}