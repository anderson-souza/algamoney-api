package com.algaworks.algamoney.api.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import com.algaworks.algamoney.api.model.Lancamento;
import com.algaworks.algamoney.api.repository.LancamentoRepository;

@Service
public class LancamentoService {

	@Autowired
	private LancamentoRepository lancamentoRepository;

	public Lancamento salvar(Lancamento lancamento) {
		return lancamentoRepository.save(lancamento);
	}

	public Lancamento buscarLancamentoPorCodigo(Long id) {
		Optional<Lancamento> lancamento = lancamentoRepository.findById(id);
		if (!lancamento.isPresent()) {
			throw new EmptyResultDataAccessException(1);
		} else {
			return lancamento.get();
		}
	}

}
