.class public Lcom/facebook/internal/Utility$PermissionsPair;
.super Ljava/lang/Object;


# instance fields
.field declinedPermissions:Ljava/util/List;

.field grantedPermissions:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/Utility$PermissionsPair;->grantedPermissions:Ljava/util/List;

    iput-object p2, p0, Lcom/facebook/internal/Utility$PermissionsPair;->declinedPermissions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDeclinedPermissions()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/Utility$PermissionsPair;->declinedPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getGrantedPermissions()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/Utility$PermissionsPair;->grantedPermissions:Ljava/util/List;

    return-object v0
.end method
