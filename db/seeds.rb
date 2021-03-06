questions = [
		{
				question: 'ലോക്‌സഭാ ഇലെക്ഷനിൽ താങ്കൾ വോട്ട് ചെയ്യാൻ തീരുമാനിച്ചിട്ടുണ്ടോ?', question_type: :radio, answers: ['ഉണ്ട്', 'ഇല്ല ']
		},

		{
				question: 'കഴിഞ്ഞ 5 വർഷത്തെ മോദി സർക്കാരിന്റെ ഭരണത്തെ എങ്ങിനെ വിലയിരുത്തുന്നു?', question_type: :radio, answers: ['വളരെ മോശം', 'മോശം' , 'ശരാശരി', 'മികച്ചത്', 'വളരെ മികച്ചത് ']
		},

		{
				question: 'കഴിഞ്ഞ 3 വർഷത്തെ പിണറായി സർക്കാരിന്റെ ഭരണത്തെ എങ്ങിനെ വിലയിരുത്തുന്നു?', question_type: :radio, answers: ['വളരെ മോശം', 'മോശം' , 'ശരാശരി', 'മികച്ചത്', 'വളരെ മികച്ചത് ']
		},

		{
				question: 'പ്രളയം നേരിടുന്നതിൽ കേരള സർക്കാർ സ്വീകരിച്ച നടപടികളെ താങ്കൾ എങ്ങിനെ വിലയിരുത്തുന്നു?', question_type: :radio, answers: ['വളരെ മോശം', 'മോശം' , 'ശരാശരി', 'മികച്ചത്', 'വളരെ മികച്ചത് ']
		},

		{
				question: 'പ്രളയം നേരിടുന്നതിൽ കേന്ദ്ര സർക്കാർ സ്വീകരിച്ച നടപടികളെ താങ്കൾ എങ്ങിനെ വിലയിരുത്തുന്നു?', question_type: :radio, answers: ['വളരെ മോശം', 'മോശം' , 'ശരാശരി', 'മികച്ചത്', 'വളരെ മികച്ചത് ']
		},

		{
				question: 'നോട്ട് നിരോധനത്തെ പറ്റിയുള്ള താങ്കളുടെ അഭിപ്രായം എന്ത് ?', question_type: :radio, answers: ['വളരെ മോശം', 'മോശം' , 'ശരാശരി', 'മികച്ചത്', 'വളരെ മികച്ചത് ']
		},

		{
				question: 'ശബരിമല വിഷയം ഇലെക്ഷനിൽ നിർണായക ഘടകം ആകുമോ?', question_type: :radio, answers: ['ആകും', 'ഇല്ല' ]
		},

		{
				question: 'ശബരിമല വിഷയത്തിൽ കേരള സർക്കാർ സ്വീകരിച്ച നിലപാടിനെ താങ്കൾ എങ്ങിനെ വിലയിരുത്തും?', question_type: :radio, answers: ['വളരെ മോശം', 'മോശം' , 'ശരാശരി', 'മികച്ചത്', 'വളരെ മികച്ചത് ']
		},

		{
				question: 'താങ്കൾ ഉൾപ്പെടുന്ന ലോക്‌സഭാ മണ്ഡലം ഏത് ?', question_type: :dropdown, answers: ['കാസർകോട് ', 'കണ്ണൂർ', 'വടകര', 'വയനാട് ', 'കോഴിക്കോട്', 'മലപ്പുറം', 'പൊന്നാനി', 'പാലക്കാട്', 'ആലത്തൂർ', 'തൃശൂർ', 'ചാലക്കുടി', 'എറണാകുളം', 'ഇടുക്കി', 'കോട്ടയം', 'ആലപ്പുഴ', 'മാവേലിക്കര', 'പത്തനംതിട്ട', 'കൊല്ലം', 'ആറ്റിങ്ങൽ', 'തിരുവനന്തപുരം']
		},

		{
				question: 'താങ്കളുടെ രാഷ്ട്രീയത്തിൽ ഉപരിയായി താങ്കളുടെ മണ്ഡലത്തിൽ ഏതു മുന്നണി വിജയിക്കും എന്ന് വിശ്വസിക്കുന്നു?', question_type: :radio, answers: ['എൽഡിഎഫ് ', 'യുഡിഎഫ്' , 'ബിജെപി' ]
		}
]

questions.each do |quest|
	pp q = Question.create(question: quest[:question], question_type: quest[:question_type])
	quest[:answers].each do |answer|
		pp 	q.answers.new(answer: answer).save
	end
end