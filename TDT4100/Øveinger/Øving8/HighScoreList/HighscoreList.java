package patterns.observable;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

public class HighscoreList {

	private int maxSize;
	
	private List<Integer> results = new ArrayList<Integer>();
	
	private List<HighscoreListListener> listeners = new ArrayList<>();
	
	public HighscoreList(int maxSize) {
		if (maxSize <= 0) {
			throw new IllegalArgumentException("Maxsize to small!");
		}
		else {
			this.maxSize = maxSize;
		}
	}
	
	public int size() {
		return results.size();
	}
	
	public int getElement(int index) {
		if (index < size()) {
			return results.get(index);
		}
		throw new IndexOutOfBoundsException("Index out of bound!");
	}
	
	public void addResult(int result) {
		if (result < 0) {
			throw new IllegalArgumentException("No negative highscores!");
		}
		List<Integer> temp = new ArrayList<Integer>(results);
		results.add(result);
		Collections.sort(results);
		if (size() > maxSize) {
			results.remove(size()-1);
		}
		
		
		for (HighscoreListListener i : listeners) {
			i.listChanged(this, results.lastIndexOf(result));
		}
//		if (!temp.equals(results)) {
//			for (HighscoreListListener i : listeners) {
//				i.listChanged(this, results.indexOf(result));
//			}
//		}

	}
	
	public void addHighscoreListListener(HighscoreListListener listener) {
		if (!listeners.contains(listener)) {
			listeners.add(listener);
		}
	}
	
	public void removeHighscoreListListener(HighscoreListListener listener) {
		if (listeners.contains(listener)) {
			listeners.remove(listener);
		}
	}
	
	@Override
	public String toString() {
		return results.toString();
	}
}
