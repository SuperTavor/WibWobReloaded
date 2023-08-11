.class public interface abstract Lcom/google/android/gms/games/leaderboard/Leaderboard;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# static fields
.field public static final SCORE_ORDER_LARGER_IS_BETTER:I = 0x1

.field public static final SCORE_ORDER_SMALLER_IS_BETTER:I


# virtual methods
.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getDisplayName(Landroid/database/CharArrayBuffer;)V
.end method

.method public abstract getGame()Lcom/google/android/gms/games/Game;
.end method

.method public abstract getIconImageUri()Landroid/net/Uri;
.end method

.method public abstract getIconImageUrl()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLeaderboardId()Ljava/lang/String;
.end method

.method public abstract getScoreOrder()I
.end method

.method public abstract getVariants()Ljava/util/ArrayList;
.end method
