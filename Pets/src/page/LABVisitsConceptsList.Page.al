page 50230 "LAB Visits Concepts List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "LAB Visits Concepts";
    Caption = 'Conceptos';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    Caption = '"No."';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    Caption = 'Descripción';
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                    Caption = 'Precio Unidad';
                }
            }
        }
    }
}