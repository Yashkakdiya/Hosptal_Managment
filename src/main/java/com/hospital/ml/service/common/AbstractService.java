package com.hospital.ml.service.common;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.util.List;
import java.util.Optional;

public interface AbstractService<T extends Serializable, ID extends Serializable> {
    JpaRepository<T, ID> getRepository();

    @Transactional(readOnly = true)
    default T getOne(ID entityId) {
        return getRepository().getOne(entityId);
    }

    @Transactional(readOnly = true)
    default Optional<T> findOne(ID entityId) {
        return getRepository().findById(entityId);
    }

    @Transactional(readOnly = true)
    default List<T> findAll() {
        return getRepository().findAll();
    }
    
    @Transactional(readOnly = false)
    default List<T> save(List<T> entities) {
        return getRepository().saveAll(entities);
    }

    @Transactional
    default T create(T entity) {
        return getRepository().save(entity);
    }

    @Transactional
    default T update(T entity) {
        return getRepository().save(entity);
    }

    @Transactional
    default void delete(T entity) {
        getRepository().delete(entity);
    }

    @Transactional
    default void deleteById(ID entityId) {
        getRepository().deleteById(entityId);
    }
}
