page 50240 "LAB Visits List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "LAB Visits Header";
    Caption = 'Visitas';
    Editable = false;

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
                field("Pet No."; Rec."Pet No.")
                {
                    ApplicationArea = All;
                    Caption = 'No. Mascota';
                }
                field("Pet Name"; Rec."Pet Name")
                {
                    ApplicationArea = All;
                    Caption = 'Nombre Mascota';
                }
                field("Pet Owner"; Rec."Pet Owner")
                {
                    ApplicationArea = All;
                    Caption = 'Propietario Mascota';
                }
                field("Visit Date"; Rec."Visit Date")
                {
                    ApplicationArea = All;
                    Caption = 'Fecha Visita';
                }
                field(Veterinary; Rec.Veterinary)
                {
                    ApplicationArea = All;
                    Caption = 'Veterinario';
                }
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(Pet)
            {
                Caption = 'Mascota';
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
            action(Owner)
            {
                Caption = 'Propietario';
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}