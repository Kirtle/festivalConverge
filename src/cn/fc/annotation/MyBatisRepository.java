package cn.fc.annotation;

//自定义注解
public @interface MyBatisRepository {
	String message() default "";
}
