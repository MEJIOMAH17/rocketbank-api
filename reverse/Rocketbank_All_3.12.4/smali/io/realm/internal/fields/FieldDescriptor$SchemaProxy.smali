.class public interface abstract Lio/realm/internal/fields/FieldDescriptor$SchemaProxy;
.super Ljava/lang/Object;
.source "FieldDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/fields/FieldDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SchemaProxy"
.end annotation


# virtual methods
.method public abstract getColumnInfo(Ljava/lang/String;)Lio/realm/internal/ColumnInfo;
.end method

.method public abstract getNativeTablePtr(Ljava/lang/String;)J
.end method

.method public abstract hasCache()Z
.end method
