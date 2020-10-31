package com.sample.video.domain.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class Singer extends TimeEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String password;

    private String singerName;

    private String emailAddress;

    private String phoneNumber;

    private String homeAddress;

    private String singerId;

    private String genre1;

    private String genre2;

    private String profileImageName;

    private String profileImageStoredLocation;

    private String description;

    private String followers;

    private String playlist;

    private String instagramAccount;

    private String youtubeChannel;

    private String likeVideoList;

}