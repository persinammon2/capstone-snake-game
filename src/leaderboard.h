#ifndef LEADERBOARD_H
#define LEADERBOARD_H

#include<fstream>
#include<string>
#include<vector>
#include "game.h"
#include <ctime>
#include <fstream>
#include <map>


class LeaderBoard {

    struct Entry {
        std::string username;
        int score;
        int snake_size;
        std::time_t timestamp;

        Entry(std::string username, int score, int snake_size, std::time_t timestamp) : 
            username(username),
            score(score),
            snake_size(snake_size),
            timestamp(timestamp) {}
    };

    public:
        LeaderBoard() {
            // if file doesn't exist, will create new ones
            // for renewing leaderboard, trusting in users having access
            // to delete the text files
            // 
            // use make_unique and perhaps emplace to create an array of smart pointers
            // to different files
            // hold locks to the leaderboard files, just in case of other leaderboard objects
        } 
    
        ~LeaderBoard() {
            // let file be using flush local
            // encrypt all
            // destroy all resources
        }


        // implement rule of 5 - declare copy and move constructors
        // although these aren't going to be used as LeaderBoard is called on stack by main.cpp
        // and always a high level object

        void addEntry(std::string username, int score, int size, GameObstacles obs_mode, GameSnakes snake_mode);
        std::vector<Entry> getSpecificRanking(std::string username, GameObstacles obs_mode, GameSnakes snake_mode);
        std::vector<Entry> getGeneralRanking(std::string username);

        // all .txt files will be structured as:
        // username...score...snakesize...timestamp/newlinecharacter
        // orders are updated during addEntry with local dictionary working
        std::string general_leaderboard_path{"leaderboards/general.txt"};
        std::string original_leaderboard_path{"leaderboards/original.txt"};
        std::string ai_leaderboard_path{"leaderboards/ai_controlled_two_player.txt"};
        std::string obstacle_leaderboard_path{"leaderboards/obstacles.txt"};
        std::string ai_obstacle_leaderboard_path{"leaderboards/ai_controlled_and_obstacles.txt"};


    private:
        // saves back in original location
        void encryptFile(std::string filename);
        void decryptFile(std::string filename, std::string out);

        // create and flush local dictionary in memory 
        void flushLocal();
        void loadLocal();

        // decrypted files are temp files with paths stored here 
        std::vector<std::string> decrypted_paths;

        // in memory local dictionary mapping leader board identification to vector of entries
        // simple file path to data relationship, no pre computed optimizations using other dictionaries
        // e.g. username to all entries, sorting by time_stamp
        std::map<std::string, std::vector<Entry>> data; 
};

#endif