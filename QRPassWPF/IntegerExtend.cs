namespace QRPassWPF;

public class IntegerExtend
{

    /// <summary>
    /// Склоняет существительное в зависимости от числительного идущего перед ним.
    /// </summary>
    /// <param name="num">Число идущее перед существительным.</param>
    /// <param name="normative">Именительный падеж слова.</param>
    /// <param name="singular">Родительный падеж ед. число.</param>
    /// <param name="plural">Множественное число.</param>
    public string Decline(int num, string nominative, string singular, string plural)
    {
        if (num > 10 && ((num % 100) / 10) == 1) return plural;

        switch (num % 10)
        {
            case 1:
                return nominative;
            case 2:
            case 3:
            case 4:
                return singular;
            default: // case 0, 5-9
                return plural;
        }
    }
}