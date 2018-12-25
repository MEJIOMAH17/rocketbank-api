.class public interface abstract Lru/rocketbank/core/manager/security/storage/TouchTokenStorage;
.super Ljava/lang/Object;
.source "TouchTokenStorage.kt"


# virtual methods
.method public abstract hasValidToken()Z
.end method

.method public abstract invalidateToken()V
.end method

.method public abstract readToken(Ljavax/crypto/Cipher;)Ljava/lang/String;
.end method

.method public abstract saveToken(Ljava/lang/String;Ljavax/crypto/Cipher;)V
.end method
