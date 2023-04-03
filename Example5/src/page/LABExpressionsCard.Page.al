/// <summary>
/// Page LAB Expressions Card (ID 50111).
/// </summary>
page 50111 "LAB Expressions Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';

                field(Value1; Value1)
                {
                    Caption = 'Value1';
                    ApplicationArea = All;

                }
                field(Value2; Value2)
                {
                    Caption = 'Value2';
                    ApplicationArea = All;
                }
            }
            group(Output)
            {
                Caption = 'Output';

                field(Result; Result)
                {
                    Caption = 'Result';
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Execute)
            {
                Caption = 'Execute';
                Image = ExecuteBatch;
                ApplicationArea = All;

                

                trigger OnAction()
                begin
                    Result := Value1 > Value2;
                end;
            }
        }
    }

    var
        Value1: Integer;
        Value2: Integer;

    var
        Result: Boolean;
}