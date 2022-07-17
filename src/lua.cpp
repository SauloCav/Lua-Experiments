#include <stdio.h>
#include <lua.h>
#include <lauxlib.h>

int main(void)
{
    lua_State *L = luaL_newstate();
    
    if (luaL_dostring(L, "function foo (x,y) return x+y end")) {
        lua_close(L);
        return -1;
    }

    lua_getglobal(L, "foo");
    lua_pushinteger(L, 5);
    lua_pushinteger(L, 3);
    lua_call(L, 2, 1);
    printf("Result: %d\n", lua_tointeger(L, -1));
    lua_pop(L, 1);
    lua_close(L);
    return 0;
}
