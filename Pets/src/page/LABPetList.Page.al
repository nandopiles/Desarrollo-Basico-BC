page 50220 "LAB Pet List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "LAB Pets";
    Caption = 'Mascotas';
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

                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Nombre';
                }
                field(Age; Rec.Age)
                {
                    ApplicationArea = All;
                    Caption = 'Edad';
                }

                field(Microchip; Rec.Microchip)
                {
                    ApplicationArea = All;
                    Caption = 'Microchip';
                }
                field("Owner Name"; Rec."Owner Name")
                {
                    ApplicationArea = All;
                    Caption = 'Nombre Propietario';
                }
                field("Owner Phone No."; Rec."Owner Phone No.")
                {
                    ApplicationArea = All;
                    Caption = 'Teléfono Propietario';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ViewPetVisits)
            {
                Enabled = CurrPage.ObjectId() = 'MyPage';
                Caption = 'Visitas';
                ToolTip = 'Muestra las visitas de la mascota seleccionada.';
                ApplicationArea = All;

                trigger OnAction()
                var
                    petId: Code[20];

                begin

                end;
            }
        }
    }
}