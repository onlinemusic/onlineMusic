package dao;

import domain.Music;
import domain.MusicType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MusicTypeDao extends JpaRepository<MusicType, Integer> {


}
