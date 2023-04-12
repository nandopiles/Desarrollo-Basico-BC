page 50210 "LAB Veterinary List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "LAB Veterinary";
    Caption = 'Veterinarios';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    Caption = 'No.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Nombre';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    Caption = 'No. Teléfono';
                }
            }
        }
    }
}