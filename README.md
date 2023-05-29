# Nanopórus szekvenálási adatok kiértékelése gépi tanulással
## Menkó Balázs

## Témavezető: Csabai Istán Ervin

A repository a [Rockfish](https://github.com/lbcb-sci/rockfish) Github oldal *fork*-olt változata. A python_scripts mappa tartalmazza a szakdolgozatomhoz írt python *file*-okat, és *Jupyter Notebook*-okat. Ezek a következők:
 - `fast5_analysis.ipynb`: A nyers jelek analízésehez használt notebook.

 - `methylation_analysis.ipynb`:  A *Rockfish* modellek futtatás eredmények analíziséhez használt notebook. 

 - `methylation_concat_dfs.py`:  A *Rockfish* modellek futtatás eredmények konkatenációjához használt szkript.

 - `nanopolish_clustering_event_align.ipynb`:  A *Nanopolish* eredményekből készült klaszterezéshez használt notebook.

 - `nanopolish_concat_same_pos_events.py`: A *Nanoplish* adatok egyedi pozíciónkénti jelerősség átlagolása és időhossz összefűzése.

 - `nanopolish_eventaligning.ipynb`: A *Nanopolish eventaligning* futtatásához szükséges bash parancsok. (A konzulensemtől)

 - `rf_calculate_site_freq.py`: A *Rockfish* pontosított metilációs frekvencia számoló szkriptje. (Eredetileg néhány elgépelés miatt nem volt képes futni a program, ezeket javítottam.)

 - `split_bed_files.py`: A biszulfit szekvenálási adatok egy *file*-ban tölthetőek le. Ebből a 22. kromoszómára vonatkozó adatok kiszűrését végzi el a szkript.

Továbbá a `figs` mappába kerülnek a generált ábrákat.
