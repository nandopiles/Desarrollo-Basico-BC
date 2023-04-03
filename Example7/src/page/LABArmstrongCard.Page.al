/// <summary>
/// Page LAB Armstrong Card (ID 50113).
/// </summary>
page 50113 "LAB Armstrong Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;

    Caption = 'Armstrong Card';

    trigger OnOpenPage()
    var
        Counter1: Integer;
        Counter2: Integer;
        PowerNumber: Integer;
        Number: Integer;
        Result: Integer;

        CounterText: Text[5];

        ArmstrongNumbers: Text;

        ResultList: List of [Integer];


    begin
        for Counter1 := 1 to 10000 do begin
            CounterText := Format(Counter1);
            Evaluate(PowerNumber, CopyStr(CounterText, StrLen(CounterText), 1));
            for Counter2 := 1 to StrLen(CounterText) do begin
                Evaluate(Number, CopyStr(CounterText, Counter2, 1));
                Result += Power(Number, PowerNumber);
            end;

            if Result = Counter1 then
                ResultList.Add(Result);
            Clear(Result);
        end;

        foreach Counter1 in ResultList do
            ArmstrongNumbers += Format(Counter1) + '\';

        Message(ArmstrongNumbers);
    end;
}