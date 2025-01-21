```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (others => 0); -- Initialize array

   function Get_Value (Index : Integer) return Integer is
   begin
      if Index in My_Arr'Range then
         return My_Arr(Index);
      else
         return 0; -- Or raise an exception, handle appropriately
      end if;
   end Get_Value;

begin
   for I in My_Arr'Range loop
      My_Arr(I) := I * 2;
   end loop;

   for I in My_Arr'Range loop
      Ada.Text_IO.Put_Line(Integer'Image(Get_Value(I)));
   end loop;

exception
   when Constraint_Error =>
      Ada.Text_IO.Put_Line("Index out of bounds. Exception Handled.");
end Example;
```