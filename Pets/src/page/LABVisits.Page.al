page 50248 "LAB Visits"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "LAB Visits Header";
    Caption = 'Visitas';
    DataCaptionExpression = Rec."No." + '-' + Rec."Pet Name";

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
                part("LAB Visits Subform"; "LAB Visits Subform")
                {
                }
                group(Comunicacion)
                {
                    field("Pet Owner"; Rec."Pet Owner")
                    {
                        ApplicationArea = All;
                        Caption = 'Propietario Mascota';
                    }
                    field("Pet Address"; Rec."Pet Address")
                    {
                        ApplicationArea = All;
                        Caption = 'Dirección Mascota';
                    }
                    field("Pet Phone No."; Rec."Pet Phone No.")
                    {
                        ApplicationArea = All;
                        Caption = 'Teléfono Mascota';
                    }
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

    var
        myInt: Integer;
}