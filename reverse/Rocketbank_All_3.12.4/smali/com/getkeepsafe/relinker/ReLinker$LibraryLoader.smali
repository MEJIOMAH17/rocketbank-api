.class public interface abstract Lcom/getkeepsafe/relinker/ReLinker$LibraryLoader;
.super Ljava/lang/Object;
.source "ReLinker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getkeepsafe/relinker/ReLinker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LibraryLoader"
.end annotation


# virtual methods
.method public abstract loadLibrary(Ljava/lang/String;)V
.end method

.method public abstract loadPath(Ljava/lang/String;)V
.end method

.method public abstract mapLibraryName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract supportedAbis()[Ljava/lang/String;
.end method
