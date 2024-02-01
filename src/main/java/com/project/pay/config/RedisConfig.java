package com.project.pay.config;

import lombok.RequiredArgsConstructor;
import org.springframework.boot.autoconfigure.data.redis.RedisProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.connection.lettuce.LettuceConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.repository.configuration.EnableRedisRepositories;
import org.springframework.data.redis.serializer.StringRedisSerializer;

@RequiredArgsConstructor
@Configuration
@EnableRedisRepositories  // Redis를 사용한다고 명시
public class RedisConfig {
    
    // Redis 서버와의 연결정보를 저장하는 객체
    // redis의 host, port를 yaml 파일에서 수정할 수 있고 getter를 통해 가지고 올 수 있음
    private final RedisProperties redisProperties;
    
    // RdisProperies로 yaml 에 저장한 host, port를 연결
    // RedisConnectionFactory : LettuceConnectionFactory 객체를 생성하여 반환하는 메서드
    // => 이 객체는 Redis Java client library 인 Lettuce를 사용해서 Redis 서버와 연결
    @Bean
    public RedisConnectionFactory redisConnectionFactory() {
        return new LettuceConnectionFactory(redisProperties.getHost(), redisProperties.getPort());
    }
    
    // serializer 설정으로 redis-cli 를 통해 직접 데이터를 조회할 수 있도록 설정
    // setKeySerializer, setValueSerializer : Redis를 직렬화하는 방식을 설정
    // Redis CLI 를 사용해 Redis 데이터를
    @Bean
    public RedisTemplate<String, Object> redisTemplate() {
        RedisTemplate<String, Object> redisTemplate = new RedisTemplate<>();
        redisTemplate.setKeySerializer(new StringRedisSerializer());
        redisTemplate.setValueSerializer(new StringRedisSerializer());
        redisTemplate.setConnectionFactory(redisConnectionFactory());

        return redisTemplate;
    }
    
}
