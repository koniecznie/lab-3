WPROWADZNIE
1.Wprowadzenie do commitów Gita
git commit;
git commit;

2.Rozgałęzienia w Gicie
git branch bugFix;
git checkout bugFix;

3.Merge w Gicie
git checkout -b bugFix;
git commit;
git checkout main;
git commit;
git merge bugFix;

4.Wprowadzenie do Rebase
git checkout -b bugFix;
git commit;
git checkout main;
git commit;
git checkout bugFix;
git rebase main;

ROZKRĘCENIE 
1.Odczep sobie HEAD
git checkout c4

2.Referencje względne (^)
git checkout c4^

3.Referencje względne #2 (~)
git branch -f main C6;
git branch -f bugFIX C0;
git checkout HEAD~1

4.Odwracanie zmian w Gicie
git reset local~1;
git checkout pushed;
git revert pushed;

PRZENOSZENIE PRACY
1.Wprowadzenie do cherry-pick
git cherry-pick c3 c4 c7;
2.Wprowadzenie do interaktywnego rebase'a
git rebase -i main~4 --aboveAll;

PO TROCHU WSZYSTKIEGO 
1.Wzięcie tylko 1 commita
git checkout main;
git cherry-pick c4;

2.Żonglowanie commitami
git rebase -i caption~2 --aboveAll;
git commit --amend;
git rebase -i caption~2 --aboveAll;
git branch -f main caption;

3.Żonglowanie commitami #2
git checkout main;
git cherry-pick C2;
git commit --amend;
git cherry-pick C3;

4.Tagi Gita
git tag v0 C1;
git tag v1 C2;
git checkout C2;

5.Git describe
git commit

TESTY ZAAWANSOWANE
1.Rebase ponad 8000 razy
git rebase main bugFix;
git rebase bugFix side;
git rebase side another;
git rebase another main;

2.Wielu rodziców
git branch bugWork main~^2~;

3.Spaghetti gałęzi
git checkout one;
git cherry-pick C4 C3 C2;
git checkout two;
git cherry-pick C5 C4 C3 C2;
git branch -f three C
Push & Pull -- Zdalne repozytoria

1.Wstęp do klonowania (clone)
git clone;

2.Zdalne gałęzie
git commit;
git checkout o/main;
git commit;

3.Git fetch
git fetch;

4.Git pull
git pull;

5.Symulacja pracy zespołowej
git clone;
git fakeTeamwork main 2;
git commit;
git pull;

6.Git push
git clone;
git commit;
git commit;
git push;

7.Rozbieżna historia
git clone;
git fakeTeamwork;
git commit;
git pull --rebase;
git push;

8.Zablokowany main
git checkout -b feature;
git checkout main;
git reset --hard o/main;
git push origin feature;
git checkout feature;

Do źródła i dalej -- zaawansowane zdalne repozytoria
1.Wypychanie dla wytrwałych!
git fetch;
git rebase o/main side1;
git rebase side1 side2;
git rebase side2 side3;
git rebase side3 main;
git push;

2.Scalanie z remote
git checkout main;
git pull;
git merge side1;
git merge side2;
git merge side3;
git push;

3.Śledzenie zdalnych repo
git checkout -b side o/main;
git commit;
git pull --rebase;
git push;

4.Argumenty git push
git push origin main;
git push origin foo;

5.Argumenty git push -- Głębiej!
git push origin main~1:foo;
git push origin foo:main;

6.Argumenty fetch
git fetch origin main~1:foo;
git fetch origin foo:main;
git checkout foo;
git merge main;

7.Źródło nicości
git push origin :foo;
git fetch origin :bar;

8.Argumenty pull
git pull origin bar:foo;
git pull origin main:side;
