package br.com.everis.dao;

import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Repository;

import br.com.everis.domain.Usuario;

@Repository
public class UsuarioDAOImpl implements UsuarioDAO {

	private static List<Usuario> usuarios;
	
	
	public UsuarioDAOImpl() {
		creatUserList();
	}
	
	private List<Usuario> creatUserList(){
		if(usuarios == null) {
			usuarios = new LinkedList<Usuario>();
			usuarios.add(new Usuario(System.currentTimeMillis()+1L, "João", "Da silva"));
			usuarios.add(new Usuario(System.currentTimeMillis()+2L, "Zé", "Neto"));
		}
		
		return usuarios;
	}
	
	
	@Override
	public void salvar(Usuario usuario) {
		if(usuario != null) {
			usuario.setId(System.currentTimeMillis());
			usuarios.add(usuario);
			System.out.println("Usuário" + usuario.getNome() + " adicionado com sucesso!");
		}else {
			System.out.println("Erro ao adicionar usuário.");
		}
	}

	@Override
	public void editar(Usuario usuario) {
		usuarios.stream()
		.filter((u) -> u.getId().equals(usuario.getId()))
		.forEach((u) -> {
			u.setNome(usuario.getNome());
			u.setSobrenome(usuario.getSobrenome());
		});
	}

	@Override
	public void excluir(Long id) {
		usuarios.removeIf((u) -> u.getId().equals(id));
	}

	@Override
	public Usuario getId(Long id) {
		return usuarios.stream()
				.filter((u) -> u.getId().equals(id))
				.collect(Collectors.toList()).get(0);
	}

	@Override
	public List<Usuario> getAll() {
		return usuarios;
	}

}
