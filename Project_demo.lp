
						 	
%---------------------DISEASE/SYMPTOM RULES------------------------
disesase(diaper_rash):- 
				_symptom(redness),
				_symptom(scaling),
				_symptom(red_bumps),
				_symptom(sores),
				_symptom(Cracking_of_skin_in_diaper_region),
				not -disease(diaper_rash).
disease(cold):- 
				_symptom(runny_or_stuffy_nose),
				_symptom(scratchy_throat),
				_symptom(coughing),
				_symptom(sneezing),
				_symptom(watery_eyes),
				_symptom(fever),
				not -disease(cold).	

		
disease(diarrhea):-
			 	_symptom(frequent_loose_or_watery_stools),
			 	_symptom(abdominal_cramps),
			 	_symptom(fever),
			 	_symptom(generally_not_feeling_well),
			 	_symptom(Vomit),
			 	not -disease(diarrhea).


disease(earache):-
				_symptom(fever),
				_symptom(pain_or_irritability),
				_symptom(difficulty_hearing),
				_symptom(blocked_ears),
				not -disease(X).
disease(pink_eye):-
				_symptom(pink_color_eyes),
				_symptom(teary_eyes),
				_symptom(itchy_eyes),
				_symptom(runny_or_stuffy_nose),
				_symptom(sneezing),
				not -disease(pink_eye).

disease(chicken_pox):- 
				_symptom(fever),
				_symptom(rash),
				_symptom(itchy_blisters),
				_symptom(loss_of_appetite),
				not -disease(chicken_pox).

disease(duchenne_muscular_dystrophy):-
				_symptom(delay_in_walking),
				_symptom(frequent_falls),
				_symptom(large_calf_muscles),
				_symptom(difficulties_in_getting_up),
				_symptom(weakness_in_lower_leg_muscles),
				not -disease(duchenne_muscular_dystrophy).

disease(croup):-
				_symptom(barking_cough),
				_symptom(hoarse_voice),
				_symptom(noisy_breath),
				_symptom(rash),
				_symptom(eye_redness),
				_symptom(swollen_lymph_nodes),
				not -disease(croup).

%-----------------NOTIFY-----------------------------------------
_notify_parent(X) :- nl,write('NOTIFY PARENT?'),nl, write('The parent should be notified that the child has  '), write(X), nl. 

_notify(X) :- _notify_consultant(X), _notify_parent(X).

_notify_consultant(cold) :- nl,write('NOTIFY HEALTH CONSULTANT?'),nl, write('Not Necessary').

_notify_consultant(diaper_rash) :- nl,write('NOTIFY HEALTH CONSULTANT?'),nl, write('Not necessary').

_notify_consultant(diarrhea) :- nl,write('NOTIFY HEALTH CONSULTANT?'),nl, write('For one or more cases of bloody diarrhea or 2 or more children with diarrhea in the group within a week.'),nl.

_notify_consultant(earache) :- nl,write('NOTIFY HEALTH CONSULTANT?'),nl, write('Not necessary').

_notify_consultant(pink_eye) :- nl,write('NOTIFY HEALTH CONSULTANT?'),nl, write('Yes if 2 or more children have red eyes with watery discharge'),nl.


_notify_consultant(chicken_pox) :- nl,write('NOTIFY HEALTH CONSULTANT?'),nl, write('Yes, notify the health consultant if the problem persists after 2 weeks or so. Not necessary otherwise'), nl.
_notify_consultant(duchenne_muscular_dystrophy) :- nl,write('NOTIFY HEALTH CONSULTANT?'),nl, write('Yes, notify the health consultant immediately. This is a serious issue'), nl.
_notify_consultant(croup) :- nl,write('NOTIFY HEALTH CONSULTANT?'),nl, write(' Visit health consultant if symptoms do not improve after 3 or 5 days'), nl.

_notify_consultant(X):- nl, write('Not available').
%------------------------SUGGESTION-------------------------------
_suggestion(earache):-
				nl, write('SUGGESTIONS'),nl, write('Chewing or yawning may be helpful in easing pressure within the middle ear. Sometimes one can feel or hear popping sounds, like rice krispies, as the Eustachian tubes open and close to try to equalize pressure.'), nl.

_suggestion(duchenne_muscular_dystrophy):-
				nl, write('SUGGESTIONS'),nl, write('Visit the nearest health consultant as soon as possible'), nl.
_suggestion(cold):-
				nl, write('SUGGESTIONS'),nl, write('Home treatment for the common cold includes getting rest and drinking plenty of fluids.Gargling with warm saltwater may help people with sore throats.'), nl.
_suggestion(diaper_rash):-
				nl, write('SUGGESTIONS'),nl, write('1.air exposure (such as no diaper for short time periods),
extra bathing (10-15 minutes in warm water),
2. application of topical barriers to the diaper region. 3. Petroleum jelly (Vaseline) and zinc oxide (Desitin) are often helpful. 4. Powders are not recommended. Neither are high concentrations of baking soda or boric acid baths.'), nl.
_suggestion(diarrhea):-
				nl, write('SUGGESTIONS'),nl, write('Children with diarrhea should be given oral rehydration solutions to replace lost fluids and electrolytes.'), nl.
_suggestion(pink_eye):-
				nl, write('SUGGESTIONS'),nl, write('Use eye drops, wash your eyes with cold water regularly, avoid contact'), nl.


_suggestion(chicken_pox):-
				nl, write('SUGGESTIONS'),nl, write('1. Child can take paracetamol to relieve fever'), nl, write('2. calamine lotion and cooling gels to ease itching'),nl, write('3. Take luke warm baths'), nl.		

_suggestion(croup):-
				nl, write('SUGGESTIONS'),nl, write('1. Keep calm, 2.Moisten the air, 3. Give the child fliuds, 4. keep the childs head elevated'), nl.
%-_suggestion(X) :- not _suggestion(X).
%-_suggestion(X) :- nl, write('SUGGESTIONS'), nl, write('Sorry! No suggestions available for'), write(X),nl. 
%---------------------------ABOUT DISEASE-----------------------


_about(chicken_pox) :-nl, write('ABOUT DISEASE '),nl, write('Chickenpox, also called varicella, is characterized by itchy red blisters that appear all over the body. A virus causes this condition. It often affects children, and was so common it was considered a childhood rite of passage.'), nl,
write('It’s very rare to have the chickenpox infection more than once. And since the chickenpox vaccine was introduced in the mid-1990s, cases have declined.'),nl.

_about(duchenne_muscular_dystrophy):- nl, write('ABOUT DISEASE '),nl, write('Duchenne Muscular Dystrophy is a disease
whose symptoms are delay in walking,
frequent falls, large calf muscles, difficulting
in getting up from a lying or sitting position,
weakness in lower leg muscles and wadding
gait.'), nl.


_about(cold):-nl, write('ABOUT DISEASE '),nl, write('The common cold, also known simply as a cold, is a viral infectious disease of the upper respiratory tract that primarily affects the nose.The throat, sinuses, and larynx may also be affected. Signs and symptoms may appear less than two days after exposure to the virus.These may include coughing, sore throat, runny nose, sneezing, headache, and fever.People usually recover in seven to ten days, but some symptoms may last up to three weeks.'), nl.

_about(diaper_rash):-nl, write('ABOUT DISEASE '),nl, write('Diaper rash is a generalized term indicating any skin irritation (regardless of cause) that develops in the diaper-covered region.'), nl.

_about(diarrhea):-nl, write('ABOUT DISEASE '),nl, write('Diarrhea is loose, watery stools (bowel movements). You have diarrhea if you have loose stools three or more times in one day.'), nl.

_about(earache):-nl, write('ABOUT DISEASE '),nl, write('Earache or ear pain may be due to infections and inflammation of the external, middle or inner ear as well as from structures that are located adjacent to the ear itself.'), nl.

_about(pink_eye):-nl, write('ABOUT DISEASE '),nl, write('Pink eye — also called conjunctivitis — is inflammation of the thin, clear covering of the white of the eye and the inside of the eyelids (conjunctiva).'), nl.

_about(pink_eye):-nl, write('ABOUT DISEASE '),nl, write('Croup is a viral infection that causes swelling of the windpipe (trachea), the airways to the lungs (the bronchi) and the vocal cords (voice box). This swelling makes the airway narrower, so it is harder to breathe.'), nl.


%---------------------------COMMON CAUSES------------------------
_common_causes(diarrhea):- nl,write('COMMON CAUSES '), nl, write('usually viral, less commonly bacterial or parasitic'), nl.

_common_causes(earache):- nl,write('COMMON CAUSES '), nl, write('bacteria or viruses-----often in context of common cold'),nl.


_common_causes(pink_eye):- nl,write('COMMON CAUSES '), nl, write('Bacterial infection of membrane covering the eye and eyelid'),write('viral Infection, allergic irritation, chemical irritation are the other causes').

_common_causes(duchenne_muscular_dystrophy):- nl,write('COMMON CAUSES '), nl, write('Lack of the dystrophin protein in muscle cells causes them to be fragile and easily damaged.DMD carriers are females who have a normal dystrophin gene on one X chromosome and an abnormal dystrophin gene on the other X chromosome. Most carriers of DMD do not themselves have signs and symptoms of the disease, but a minority do.'), nl.

_common_causes(cold):- nl,write('COMMON CAUSES '), nl, write('Viruses(early stage of many viruses) like'), nl, write('Adenovirus, Coxsackievirus, Influenza'), nl, write('bacteria like Mycoplasma'), nl.

_common_causes(diaper_rash):- nl,write('COMMON CAUSES '), nl, write('1.Irritation by rubbing of diaper material against skin wet with urine and stool.'), nl, write('2.Infection with yeast or bacteria'), nl.

_common_causes(chicken_pox):- nl,write('COMMON CAUSES '), nl, write('Varicella-zoster virus (VZV) causes the chickenpox infection. Most cases occur through contact with an infected person. The virus is contagious to those around you for one to two days before your blisters appear. VZV remains contagious until all blisters have crusted over. The virus can spread through:'), nl,write('1. saliva'),nl,write('2. coughing'),nl,
write('3. sneezing'), nl,
write('4. contact with fluid from the blisters'),nl.

_common_causes(croup):- nl,write('COMMON CAUSES '), nl, write('Croup is very common in young children, mainly in children under 5 years old. It’s usually not serious. The inflammation is usually caused by the same viruses that cause the common cold, and is therefore more common in winter.'), nl.
%----------------------------PATIENT SYMPTOMS--------------------
%Example symptoms
%1
has_symptom(fever).
has_symptom(rash).
has_symptom(itchy_blisters).
has_symptom(loss_of_appetite).
%2
%has_symptom(pink_color_eyes).
%has_symptom(teary_eyes).
%has_symptom(itchy_eyes).
%has_symptom(runny_or_stuffy_nose).
%has_symptom(sneezing).
	

%probability(X) :- disease_score(X).

%-------------------------DIAGNOSIS REPORT-----------------------

-disease(X) :- not disease(X).
_symptom(Y) :- has_symptom(Y).
-has_symptom(X) :- not has_symptom(X).
has_symptom(X) :- _symptom(X).

diagnosis:- write('----------------------DIAGNOSIS REPORT-----------------------------'), nl, disease(X), write(' The child is likely to have '),write(X), _about(X), _notify(X),  _common_causes(X), _suggestion(X), nl,write('-----------------------------------------------------------------------'),nl, write('ANSWER SET GENERATED'), nl.
diagnosis :- nl, write('sorry the system does not have adequate knowledge regarding the following symptoms'),nl.
% Prints a Diagonosis report of the child 
?- diagnosis.
% given list of symptom find the disease.
%?- disease(X).
