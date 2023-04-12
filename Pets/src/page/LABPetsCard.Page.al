page 50220 "LAB PetsCard"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "LAB Pets";
    Caption = 'Mascotas';

    layout
    {
        area(Content)
        {
            group(PetInfo)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    Caption = 'No.';
                }

                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                    Caption = 'Date of Birth';
                }
                field(Age; Rec.Age)
                {
                    ApplicationArea = All;
                    Caption = 'Age';
                    Editable = false;
                }
                field(Sex; Rec.Sex)
                {
                    ApplicationArea = All;
                    Caption = 'Sex';
                }
                field(Microchip; Rec.Microchip)
                {
                    ApplicationArea = All;
                    Caption = 'Microchip';
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
                field(Deceased; Rec.Deceased)
                {
                    ApplicationArea = All;
                    Caption = 'Fallecido';
                }
            }
            group(OwnerInfo)
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
            group(VeterinaryInfo)
            {
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
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}