CREATE PROCEDURE [dbo].[sp_insert]  
(  
  
      
    @Username varchar(50),  
    @Password varchar(50),  
    @Email varchar(50)  
  
)  
as  
Begin  
  
    Declare @Count int  
    Declare @codereturn int  
      
    Select @Count = COUNT(Username)  
    from tbl_data where Username = @Username  
    If @Count > 0  
    Begin   
      
        Set @codereturn = -1  
    End  
    Else  
    Begin  
          
        Set @codereturn  = 1  
        Insert into tbl_data values(@Username,@Password,@Email)  
      
    End  
    Select @codereturn as ReturnValue  
      
End   


