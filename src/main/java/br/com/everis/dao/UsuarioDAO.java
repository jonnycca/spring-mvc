package br.com.everis.dao;

import java.util.List;

import br.com.everis.domain.Usuario;

public interface UsuarioDAO {

	void salvar(Usuario usuario);
	
	void editar(Usuario usuario);
	
	void excluir(Long id);
	
	Usuario getId(Long id);
	
	List<Usuario> getAll();
}
