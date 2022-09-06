using System;

namespace QRPassWPF.Model;

public static class Singleton<T>
{
    private static readonly object sync = new object();
    static bool registered = false;

    public static T? Instance { get; private set; }

    public static void Register(Func<T> constructor)
    {
        lock (sync)
        {
            if (!registered)
            {
                Instance = constructor();
                registered = true;
            }
        }
    }
}