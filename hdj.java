import java.util.*

class a{
    public static int find(int[] a,int[] b,int n)
    {int j=0;
        for(int i=0;i<n;i++)
        {
            if(a[j]==b[i])
            {
                j++;
            }
            else
            {
                return result=a[j];
            }
        }
    }
    public static void main(String[] args)
    {
        int[] a={1,2,3,4};
        int[] b={1,5,6,7};
        int n=4;
        int re=find(a,b,n);
        System.out.println(re);
    }
}