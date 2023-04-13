page 50221 "LAB PetsCard"
{
    PageType = Card;
    ApplicationArea = All; //idk how to create a custome id
    UsageCategory = Administration;
    SourceTable = "LAB Pets";
    Caption = 'Ficha Mascota';

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
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                    Caption = 'Fecha Nacimiento';
                }
                field(Age; Rec.Age)
                {
                    ApplicationArea = All;
                    Caption = 'Edad';
                    Editable = false;
                }
                field(Microchip; Rec.Microchip)
                {
                    ApplicationArea = All;
                    Caption = 'Microchip';
                }
                field(Sex; Rec.Sex)
                {
                    ApplicationArea = All;
                    Caption = 'Sexo';
                }
                field(Species; Rec.Species)
                {
                    ApplicationArea = All;
                    Caption = 'Especie';
                }
                field(Breed; Rec.Breed)
                {
                    ApplicationArea = All;
                    Caption = 'Raza';
                }
                field("Preferred Veterinary"; Rec."Preferred Veterinary")
                {
                    ApplicationArea = All;
                    Caption = 'Veterinario Preferido';
                }
                field("Veterinary Name"; Rec."Veterinary Name")
                {
                    ApplicationArea = All;
                    Caption = 'Nombre Veterinario';
                }
                field(Deceased; Rec.Deceased)
                {
                    ApplicationArea = All;
                    Caption = 'Fallecido';
                }
            }
            group(Owner)
            {
                field("Owner No."; Rec."Owner No.")
                {
                    ApplicationArea = All;
                    Caption = 'No. Propietario';

                }
                field("Owner Name"; Rec."Owner Name")
                {
                    ApplicationArea = All;
                    Caption = 'Nombre Propietario';
                }
                field("Owner Address"; Rec."Owner Address")
                {
                    ApplicationArea = All;
                    Caption = 'Dirección Propietario';
                }
                field("Owner Phone No."; Rec."Owner Phone No.")
                {
                    ApplicationArea = All;
                    Caption = 'Teléfono Propietario';
                }
                field("Owner Email"; Rec."Owner Email")
                {
                    ApplicationArea = All;
                    Caption = 'Email Propietario';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(VisitsPets)
            {
                Enabled = CurrPage.ObjectId() = 'MyPage';
                ApplicationArea = All;
                Caption = 'Visitas';
                Image = View;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}