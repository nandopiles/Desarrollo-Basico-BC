page 50201 "LAB Pet Owner Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "LAB PetOwners";
    Caption = 'Ficha Propietario';

    layout
    {
        area(Content)
        {
            group(General)
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
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    Caption = 'Dirección';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    Caption = 'No. Teléfono';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    Caption = 'Email';
                }
                field("How many pets"; Rec."How many pets")
                {
                    ApplicationArea = All;
                    Caption = 'No. Mascotas';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                Enabled = CurrPage.ObjectId() = 'MyPage'; //It can only be visible on this Page
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}