package br.com.financeiro.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.financeiro.models.PaginatedList;
import br.com.financeiro.models.Usuario;

@Repository
public class UsuarioDao{
	@PersistenceContext
	private EntityManager manager;

	public List<Usuario> all(){
		return manager.createQuery("SELECT u FROM Usuario u", Usuario.class).getResultList();
	}

	@Transactional
	public void save(Usuario usuario){
		manager.persist(usuario);
	}

   public Usuario findById(Integer id){
      return manager.find(Usuario.class, id);
   }

	public void remove(Usuario usuario){
		manager.remove(usuario);
	}
	
	public void update(Usuario usuario){
		manager.merge(usuario);
	}
	
	public Usuario buscaUsuario(Usuario user){
		/*Melhorar isso depois*/
		if(user.getEmail() == null && user.getEmail().isEmpty()){
			
		}
		if(user.getSenha() == null && user.getSenha().isEmpty()){
			
		}
		
		Query query = manager.createQuery("SELECT u FROM Usuario u Where senha = :senha AND email = :email ");
		query.setParameter("email", user.getEmail());
		query.setParameter("senha", user.getSenha());
		Usuario result = (Usuario) query.getSingleResult();
		return result;		
	}

	public PaginatedList paginated(int page, int max){
		return new PaginatorQueryHelper().list(manager, Usuario.class, page, max);
	}

}
