------------------------------------------------------------------------------------------------------------------------
--------------------------------------- File Details -------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
--            Project:          Project_System
--            File name:        <File_Name>
--            Description:      This is the description of the test file
--
--
--
------------------------------------------------------------------------------------------------------------------------
--------------------------------------- Change History: ----------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
--
--            Version         Date            Author          Description
--            -------         ----            ------          -----------
--            1.0             22/08/17        S.Crowther      Initial version
------------------------------------------------------------------------------------------------------------------------
--------------------------------------- Parameters: --------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
--
--            Name              Direction       Description
--            ----              ---------       ----
--            Input_1           Input           Template array
--            Output_1          Output          Template array
--
------------------------------------------------------------------------------------------------------------------------
--------------------------------------- Function Details: --------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
--
--            Function name:    <Function_Name>
--            Description:           
--
--
--            Equation Logic: If x = 1 then      
--                               If template_variable = 1 then
--                                  Test_Failed                   
--                               else
--                                  Test Passed
--                               end if  
--                            Else
--                               Test Passed
--                            End if           
--
--            Return:           
--            Boolean Value
------------------------------------------------------------------------------------------------------------------------
--------------------------------------- Code: --------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
package body Cbit is

type integer_Array_Dimension is range 0..10;

arrayConstantMax : constant integer_Array_Dimension := integer_Array_Dimension'Last;

type integer_Matrix_Dimension is range 0 .. 10;

integer_Matrix_1 : array (arrayConstantMax, arrayConstantMax) of integer_Matrix_Dimension;

integer_Matrix_2 : array (arrayConstantMax, arrayConstantMax) of integer_Matrix_Dimension;

integer_Matrix_3 : array (arrayConstantMax, arrayConstantMax) of integer_Matrix_Dimension;

procedure get

is

begin

   i := 0;
   j := 0;
   k := 0;
   

end get;

procedure pm 

is

   

begin

   

end pm;

procedure ap is separate;

procedure disp is separate;

--class path
--{
--	int n;
--		int p[10][10];
--		int a[10][10];
--		int c[10][10];
--	public:
--		void get();
--		void pm();
--		void ap();
--		void disp();
--};
--void path::get()
--{
--	int i,j,k;
--	clrscr();
--	cout<<"Enter the no. of nodes in the graph :";
--	cin>>n;
--	cout<<"Enter the adjacency matrix :";
--	for(i=1;i<=n;i++)
--	{
--		for(j=1;j<=n;j++)
--		{
--		    //	cout<<"a["<<i<<","<<j<<"] = ";
--			cin>>a[i][j];
--			p[i][j]=0;
--		}
--	}
--	cout<<"Enter the cost matrix is :";
--	for(i=1;i<=n;i++)
--	{
--		for(j=1;j<=n;j++)
--		{
--		   //cout<<"a["<<i<<","<<j<<"] = ";
--			 cin>>c[i][j];
--		}
--	}
--	for(i=1;i<=n;i++)
--	{
--		for(j=1;j<=n;j++)
--		{
--			p[i][j]=a[i][j];
--		}
--	}
--}
--void path::disp()
--{
--//	cout<<"The output matrix for the given graph is :";
--	for(int i=1;i<=n;i++)
--	{
--		for(int j=1;j<=n;j++)
--		{
--			cout<<p[i][j]<< "	";
--		}
--		cout<<endl;
--}
--}
--
--void path::pm()
--{
--	int i,j,k;
--
--	for(k=1;k<=n;k++)
--	{
--		for(i=1;i<=n;i++)
--		{
--			for(j=1;j<=n;j++)
--			{
--				p[i][j]=p[i][j] || p[i][k] && p[k][j];
--			}
--		}
--	}
--
--}
--void path::ap()
--{
--	int i,j,k;
--	for(i=1;i<=n;i++)
--	{
--		for(j=1;j<=n;j++)
--		{
--
--				p[i][j]=c[i][j];
--
--		}
--	}
--	for(k=1;k<=n;k++)
--	{
--		for(i=1;i<=n;i++)
--		{
--			for(j=1;j<=n;j++)
--			{
--				if(p[i][j]<p[i][k]+p[k][j])
--				{
--					p[i][j]=p[i][j];
--				}
--				else
--				{
--				p[i][j]=p[i][k]+p[k][j];
--				}
--			}
--		}
--	}
--}
--void main()
--{
--path p;
--p.get();
--p.pm();
--cout<<"path matrix is :
--";
--p.disp();
--getch();
--p.ap();
--cout<<"all pair shortest  path matrix is :
--";
--p.disp();
--getch();
--}
end Cbit;
