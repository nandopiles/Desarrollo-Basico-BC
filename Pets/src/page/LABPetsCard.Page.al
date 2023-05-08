page 50221 "LAB PetsCard"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "LAB Pets";
    Caption = 'Ficha Mascota';
    //id
    DataCaptionExpression = Rec."No." + '-' + Rec.Name;

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
                    Importance = Promoted;
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                    Caption = 'Fecha Nacimiento';
                    Visible = false;
                }
                field(Age; Rec.Age)
                {
                    ApplicationArea = All;
                    Caption = 'Edad';
                    Editable = false;
                    Visible = false;
                }
                field(Microchip; Rec.Microchip)
                {
                    ApplicationArea = All;
                    Caption = 'Microchip';
                    Visible = false;
                }
                field(Sex; Rec.Sex)
                {
                    ApplicationArea = All;
                    Caption = 'Sexo';
                    Importance = Promoted;
                    Visible = false;
                }
                field(Species; Rec.Species)
                {
                    ApplicationArea = All;
                    Caption = 'Especie';
                    Importance = Promoted;
                    Visible = false;
                }
                field(Breed; Rec.Breed)
                {
                    ApplicationArea = All;
                    Caption = 'Raza';
                    Visible = false;
                }
                field("Preferred Veterinary"; Rec."Preferred Veterinary")
                {
                    ApplicationArea = All;
                    Caption = 'Veterinario Preferido';
                    Visible = false;
                }
                field("Veterinary Name"; Rec."Veterinary Name")
                {
                    ApplicationArea = All;
                    Caption = 'Nombre Veterinario';
                    Visible = false;
                }
                field(Deceased; Rec.Deceased)
                {
                    ApplicationArea = All;
                    Caption = 'Fallecido';
                    Visible = false;
                }
            }
            group(Owner)
            {
                field("Owner No."; Rec."Owner No.")
                {
                    ApplicationArea = All;
                    Caption = 'No. Propietario';
                    Importance = Standard;
                    Visible = false;

                    trigger OnValidate()
                    var
                        Owner: Record "LAB PetOwners";
                    begin
                        if Owner.Get(Owner."No.", Rec."No.") then
                            Rec."Owner Name" := Owner.Name;
                    end;

                }
                field("Owner Name"; Rec."Owner Name")
                {
                    ApplicationArea = All;
                    Caption = 'Nombre Propietario';
                    Editable = false;
                    Importance = Promoted;
                    Visible = false;
                }
                field("Owner Address"; Rec."Owner Address")
                {
                    ApplicationArea = All;
                    Caption = 'Dirección Propietario';
                    Visible = false;
                }
                field("Owner Phone No."; Rec."Owner Phone No.")
                {
                    ApplicationArea = All;
                    Caption = 'Teléfono Propietario';
                    Importance = Promoted;
                }
                field("Owner Email"; Rec."Owner Email")
                {
                    ApplicationArea = All;
                    Caption = 'Email Propietario';
                    Visible = false;
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
                //Enabled = CurrPage.ObjectId() = 'MyPage';
                ApplicationArea = All;
                Caption = 'Visitas';
                //Image = View;

                trigger OnAction()
                begin

                end;
            }
        }
    }
}