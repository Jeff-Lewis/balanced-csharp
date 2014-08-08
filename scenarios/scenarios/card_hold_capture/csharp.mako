% if mode == 'definition':
CardHold.Capture()
% elif mode == 'request':
CardHold cardHold = CardHold.fetch("/card_holds/HL1CflQId0CQs3t6o53ZIqax");
Dictionary<string, object> debitPayload = new Dictionary<string, object>();
debitPayload.Add("appears_on_statement_as", "ShowsUpOnStmt");
debitPayload.Add("description", "Some descriptive text for the debit in the dashboard");
Debit debit = cardHold.Capture(debitPayload);
% endif
