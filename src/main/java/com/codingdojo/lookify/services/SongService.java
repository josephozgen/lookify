package com.codingdojo.lookify.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.lookify.models.Song;
import com.codingdojo.lookify.repositories.SongRepository;

@Service
public class SongService {
	private final SongRepository songRepository;

	public SongService(SongRepository songRepository) {
//		super();
		this.songRepository = songRepository;
	}

	// return all the songs
	public List<Song> allSongs() {
		return songRepository.findAll();
	}

	public List<Song> searchArtist(String artist) {
		return songRepository.findByArtistContaining(artist);
	}

	public List<Song> findTopTen() {
		List<Song> songs = songRepository.findByOrderByRatingDesc();
		return songs;
	}

	// creates a song
	public Song createSong(Song s) {
		return songRepository.save(s);
	}

	// retrieves a song
	public Song findSong(Long id) {
		Optional<Song> optionalSong = songRepository.findById(id);
		if (optionalSong.isPresent()) {
			return optionalSong.get();
		} else {
			return null;
		}
	}

	// update a song
	public Song updateSong(Long id, Song song) {
		// TODO Auto-generated method stub

		Song exists = findSong(id);
		if (exists != null) {
			return songRepository.save(song);
		} else {
			return null;
		}
	}

	// delete a song
	public void deleteSong(Long id) {
		songRepository.deleteById(id);
	}
}
