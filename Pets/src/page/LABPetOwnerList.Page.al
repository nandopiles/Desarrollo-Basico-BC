page 50200 "LAB Pet Owner List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "LAB PetOwners";
    Editable = false;
    Caption = 'Propietarios';

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
            action(Mascotas)
            {
                ApplicationArea = All;
                Caption = 'Mascotas';
                //RunPageLink = "LAB Pets" = field("No."); <--

                trigger OnAction()
                var
                    Pets: Record "LAB Pets";
                begin
                    Pets.SetFilter("Owner No.", Rec."No.");
                    Pets.FindSet();

                    repeat
                        Message('%1', Pets);
                    until Pets.Next() = 0;
                end;
            }
        }
    }
}