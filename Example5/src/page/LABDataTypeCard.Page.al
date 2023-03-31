/// <summary>
/// Page LAB Data Type Card (ID 50110).
/// </summary>
page 50110 "LAB Data Type Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;

    Caption = 'Date Type Card';

    trigger OnOpenPage()
    begin
        Message('The value of %1 is %2', 'YesOrNo', YesOrNo);
        Message('The value of %1 is %2', 'Amount', Amount);
        Message('The value of %1 is %2', 'When Was It', "When Was It");
        Message('The value of %1 is %2', 'What Time', "What Time");
        Message('The value of %1 is %2', 'Description', Description);
        Message('The value of %1 is %2', 'Code Number', "Code Number");
        Message('The value of %1 is %2', 'Ch', Ch);
        Message('The value of %1 is %2', 'Color', Color);
    end;


    var
        loopNo: Integer;

    var
        YesOrNo: Boolean;

    var
        Amount: Decimal;

    var
        "When Was It": Date;

    var
        "What Time": Time;

    var
        Description: Text[30];

    var
        "Code Number": Code[10];

    var
        Ch: Char;

    var
        Color: Option Red,Orange,Yellow,Green,Blue,Violet;

}