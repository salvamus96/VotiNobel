package it.polito.tdp.model;

import java.util.ArrayList;
import java.util.List;

import it.polito.tdp.dao.EsameDAO;

public class Model {

	private List<Esame> esami;
	private EsameDAO edao;
	private List<Esame> soluzione;
	private double bestAvg;
	
	public Model() {
		edao = new EsameDAO();
		
		// carico i dati dal database
		esami = edao.getTuttiEsami();
//		for (Esame e: esami) {
//			System.out.println(e);
//		}
	}
	
	public List<Esame> calcolaSottoinsiemeEsami(int numeroCrediti) {
		// inizializzazione della soluzione e della relativa media 
		// (strutture dati utili nella ricorsione)
		soluzione = new ArrayList<Esame>();
		bestAvg = 0.0;
		
		int step = 0;
		List<Esame> parziale = new ArrayList<>();
		recursive(step, parziale, numeroCrediti);
		
		return soluzione;
	}
	
	public int totCrediti(List<Esame> parziale) {
		int somma = 0;
		for (Esame e: parziale) {
			somma += e.getCrediti();
		}
		return somma;
	}
	
	// media pesata
	public double avg(List<Esame> parziale) {
		double avg = 0;
		for (Esame e : parziale) {
			avg += e.getCrediti() * e.getVoto();
		}
		avg /= totCrediti(parziale); // richiamo la funzione sopra
		return avg;
	}
	
	// quando siamo interessati alla soluzione ottima la ricorsiva più essere boolean e non void
	private void recursive(int step, List<Esame> parziale, int numeroCrediti) {
		
		// Debug ??
		// for (Esame e : parziale) {
		//	System.out.print(e.getCodins() + " ");
		// }
		// System.out.println(" ");
		
		
		// Condizione di terminazione
		if (totCrediti(parziale) > numeroCrediti) {
			return;
		}
		
		// Controllo se ho trovato una nuova soluzione migliore
		if (totCrediti(parziale) == numeroCrediti) {
			if (avg(parziale) > bestAvg) {
				// soluzione migliore trovata perciò aggiorno le mie variabili
				soluzione = new ArrayList<>(parziale);
				bestAvg = avg(parziale); 
			}
		}
		
		// Generazione di una nuova soluzione parziale
		for (Esame esame : esami) {
			// lo stesso esame non può essere ripetuto nella soluzione
			if (!parziale.contains(esame)) { // ricorda di implementare hashCode e equals
				parziale.add(esame);
				recursive(step+1, parziale, numeroCrediti);
				parziale.remove(esame);
			}
		}
	}

}
