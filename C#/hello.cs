public class Hello
{
    public static void Main()
    {
        System.Console.WriteLine("Hello World");
        System.Console.WriteLine(1 + 1);

        // Type coercion is not very aggresive, string concatation will be coerced, but not equality
        // example: "5" == 5 throws error
        System.Console.WriteLine("High" + 5);
    }
}
