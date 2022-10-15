package {{package_name}}.entity;

import lombok.*;
import org.hibernate.annotations.Comment;

import javax.persistence.*;

@Entity
@Table(name="{{database_name}}")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class {{entity_name.pascalCase()}} {

    @Id
    @Column(name="id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name="{{entity_name.camelCase()}}_name") // database teki isim
    private String {{entity_name.camelCase()}}Name; // input json daki isim

}